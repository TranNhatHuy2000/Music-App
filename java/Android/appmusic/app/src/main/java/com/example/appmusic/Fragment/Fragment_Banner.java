package com.example.appmusic.Fragment;

import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.viewpager.widget.ViewPager;

import com.example.appmusic.Adapter.BannerAdapter;
import com.example.appmusic.Model.Quangcao;
import com.example.appmusic.R;
import com.example.appmusic.Service.APIservice;
import com.example.appmusic.Service.Dataservice;

import java.util.ArrayList;
import java.util.List;

import me.relex.circleindicator.CircleIndicator;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

public class Fragment_Banner extends Fragment {
    ViewPager viewPager;
    CircleIndicator circleIndicator;
    View view;
    BannerAdapter bannerAdapter;
    Runnable runnable;
    Handler handler;
    int currentItem;
    @Nullable
    @Override
    public View onCreateView(@NonNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        view = inflater.inflate(R.layout.fragment_banner,container,false);
        anhxa();
        GetData();

        return view;
    }

    private void anhxa() {
        viewPager = view.findViewById(R.id.viewpager);
        circleIndicator = view.findViewById(R.id.indicatordefault);
    }

    private void GetData() {
        Dataservice dataservice = APIservice.getService();
        Call<List<Quangcao>> callback = dataservice.GetDataBanner();
        callback.enqueue(new Callback<List<Quangcao>>() {
            @Override
            public void onResponse(Call<List<Quangcao>> call, Response<List<Quangcao>> response) {
                ArrayList<Quangcao> banner = (ArrayList<Quangcao>) response.body();
                 bannerAdapter = new  BannerAdapter(getActivity(),banner);
                 viewPager.setAdapter(bannerAdapter);
                 circleIndicator.setViewPager(viewPager);
                 handler = new Handler();
                 runnable = new Runnable() {
                     @Override
                     public void run() {
                            currentItem = viewPager.getCurrentItem();
                            currentItem++;
                            if (currentItem >= viewPager.getAdapter().getCount()){
                                currentItem = 0;
                            }
                            viewPager.setCurrentItem(currentItem,true);
                            handler.postDelayed(runnable,4500);
                     }

                 };

                 handler.postDelayed(runnable,4500);

            }

            @Override
            public void onFailure(Call<List<Quangcao>> call, Throwable t) {

            }
        });
    }
}
