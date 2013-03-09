.class public Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;
.super Landroid/os/Binder;
.source "UploadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/UploadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/uploader/UploadService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/uploader/UploadService;)V
    .locals 0
    .parameter

    .prologue
    .line 237
    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;->this$0:Lcom/google/android/apps/uploader/UploadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/google/android/apps/uploader/UploadService;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService$UploadServiceBinder;->this$0:Lcom/google/android/apps/uploader/UploadService;

    return-object v0
.end method
