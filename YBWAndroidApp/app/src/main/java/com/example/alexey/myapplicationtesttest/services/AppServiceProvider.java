package com.example.alexey.myapplicationtesttest.services;

public class AppServiceProvider {
    private static AppServiceProvider _instance;

    private InternetService internetService;
    private AppServiceProvider(){}

    public synchronized static AppServiceProvider getInstance()
    {
        if (_instance == null)
        {
            _instance = new AppServiceProvider();
        }
        return _instance;
    }

    public synchronized  InternetService getInternetService()
    {
        if (internetService == null)
        {
            internetService = new InternetService();
        }
        return internetService;
    }
}
