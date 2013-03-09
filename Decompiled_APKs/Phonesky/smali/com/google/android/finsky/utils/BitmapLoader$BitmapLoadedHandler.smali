.class public interface abstract Lcom/google/android/finsky/utils/BitmapLoader$BitmapLoadedHandler;
.super Ljava/lang/Object;
.source "BitmapLoader.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/BitmapLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BitmapLoadedHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/google/android/finsky/utils/BitmapLoader$BitmapContainer;)V
.end method
