<?xml version="1.0" encoding="utf-8"?>
<android.support.v4.widget.DrawerLayout xmlns:android="http://schemas.android.com/apk/res/android"
                                        xmlns:app="http://schemas.android.com/apk/res-auto"
                                        android:id="@+id/drawer"
                                        android:layout_width="match_parent"
                                        android:fitsSystemWindows="true"
                                        android:layout_height="match_parent">        
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <include
            android:id="@+id/toolbar_actionbar"
            layout="@layout/toolbar_default"
            android:layout_width="match_parent"
            android:layout_height="wrap_content"/>

        <FrameLayout
            android:id="@+id/container"
            android:layout_width="match_parent"
            android:clickable="true"
            android:layout_height="match_parent"/>
    </LinearLayout>
    <!-- android:layout_marginTop="?android:attr/actionBarSize"-->
<#if hasScrimInsets>        
<${packageName}.ScrimInsetsFrameLayout
        android:id="@+id/scrimInsetsFrameLayout"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:fitsSystemWindows="true"
        app:insetForeground="#4000"
        android:elevation="10dp"
        </android.support.v4.widget.DrawerLayout></#if>
    <fragment
        android:id="@+id/fragment_drawer"
        android:name="${packageName}.NavigationDrawerFragment"
        android:layout_width="@dimen/navigation_drawer_width"
        android:layout_height="match_parent"
        android:layout_gravity="start"
        app:layout="@layout/fragment_navigation_drawer"/>
<#if hasScrimInsets></${packageName}.ScrimInsetsFrameLayout></#if>


</android.support.v4.widget.DrawerLayout>