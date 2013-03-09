.class public interface abstract Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ExtendableRequest$Listener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ExtendableRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract requestCancelled(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ExtendableRequest;)V
.end method

.method public abstract requestCompleted(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ExtendableRequest;Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Response;)V
.end method

.method public abstract requestFailed(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ExtendableRequest;Ljava/lang/Exception;)V
.end method

.method public abstract requestProgress(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ExtendableRequest;JJ)V
.end method
