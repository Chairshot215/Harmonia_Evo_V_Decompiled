.class public interface abstract Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerController;
.super Ljava/lang/Object;
.source "AccountRecentLabelSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/AccountRecentLabelSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SpinnerController"
.end annotation


# virtual methods
.method public abstract getAccountInboxMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentLabel()Ljava/lang/String;
.end method

.method public abstract navigateToAccount(Ljava/lang/String;)V
.end method

.method public abstract navigateToLabel(Ljava/lang/String;)V
.end method

.method public abstract setDataSetChangedCallback(Lcom/google/android/gm/AccountRecentLabelSpinner$SpinnerDataSetChangeCallback;)V
.end method

.method public abstract showLabelList()V
.end method
