.class public interface abstract Lcom/htc/android/rosie/widget/Widget$ConfigurationChange$Callback;
.super Ljava/lang/Object;
.source "Widget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/rosie/widget/Widget$ConfigurationChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onRetainNonConfigurationObject()Ljava/lang/Object;
.end method

.method public abstract onSizeChanged(II)V
.end method
