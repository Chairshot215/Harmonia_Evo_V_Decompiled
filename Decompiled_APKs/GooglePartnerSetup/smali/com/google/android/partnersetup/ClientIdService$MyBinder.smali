.class public final Lcom/google/android/partnersetup/ClientIdService$MyBinder;
.super Landroid/os/Binder;
.source "ClientIdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/ClientIdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/ClientIdService;


# direct methods
.method public constructor <init>(Lcom/google/android/partnersetup/ClientIdService;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/google/android/partnersetup/ClientIdService$MyBinder;->this$0:Lcom/google/android/partnersetup/ClientIdService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
