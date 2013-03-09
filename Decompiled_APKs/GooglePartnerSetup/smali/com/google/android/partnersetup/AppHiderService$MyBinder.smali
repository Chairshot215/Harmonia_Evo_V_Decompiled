.class public final Lcom/google/android/partnersetup/AppHiderService$MyBinder;
.super Landroid/os/Binder;
.source "AppHiderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/partnersetup/AppHiderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/partnersetup/AppHiderService;


# direct methods
.method public constructor <init>(Lcom/google/android/partnersetup/AppHiderService;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/google/android/partnersetup/AppHiderService$MyBinder;->this$0:Lcom/google/android/partnersetup/AppHiderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method
