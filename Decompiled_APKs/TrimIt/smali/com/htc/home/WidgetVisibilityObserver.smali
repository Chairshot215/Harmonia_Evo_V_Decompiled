.class public interface abstract Lcom/htc/home/WidgetVisibilityObserver;
.super Ljava/lang/Object;
.source "WidgetVisibilityObserver.java"


# static fields
.field public static final NOTIFY_CAUSE_ACTIVITY:I = 0x1e

.field public static final NOTIFY_CAUSE_GESTURE:I = 0x14

.field public static final NOTIFY_CAUSE_LAYOUT_INFLATED:I = 0xa

.field public static final NOTIFY_CAUSE_ON_NEW_INTENT:I = 0x3c

.field public static final NOTIFY_CAUSE_UI_ADD_TO_HOME:I = 0x28

.field public static final NOTIFY_CAUSE_UI_WEATHER_CLOCK:I = 0x32

.field public static final NOTIFY_TYPE_ACTIVITY_LIFECYCLE:I = 0x28

.field public static final NOTIFY_TYPE_HIBERNATE:I = 0xa

.field public static final NOTIFY_TYPE_REAL_TIME:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFY_TYPE_STOP_TOUCHING:I = 0x14

.field public static final NOTIFY_TYPE_WEATHER_CLOCK:I = 0x32


# virtual methods
.method public abstract fireOnGLAnimationStop(I)V
.end method

.method public abstract fireOnNewIntent(I)V
.end method

.method public abstract fireOnPause(I)V
.end method

.method public abstract fireOnResume(I)V
.end method

.method public abstract getNotifyType()I
.end method

.method public abstract getSettingIntent()Ljava/lang/String;
.end method
