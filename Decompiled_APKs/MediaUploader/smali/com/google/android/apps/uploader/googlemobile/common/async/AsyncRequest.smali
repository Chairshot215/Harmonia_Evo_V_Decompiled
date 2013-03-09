.class public interface abstract Lcom/google/android/apps/uploader/googlemobile/common/async/AsyncRequest;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_CLOSED:I = 0x4

.field public static final STATE_COMPLETED:I = 0x2

.field public static final STATE_EXCEPTION:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_RUNNING:I = 0x1


# virtual methods
.method public abstract close()V
.end method

.method public abstract getException()Ljava/lang/Exception;
.end method

.method public abstract getState()I
.end method

.method public abstract hasException()Z
.end method

.method public abstract isCompletedOrException()Z
.end method

.method public abstract reset()V
.end method

.method public abstract submit(Lcom/google/android/apps/uploader/googlemobile/common/task/AbstractTask;)V
.end method
