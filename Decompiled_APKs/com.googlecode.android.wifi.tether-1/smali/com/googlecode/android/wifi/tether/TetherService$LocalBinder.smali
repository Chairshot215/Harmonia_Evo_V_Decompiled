.class public Lcom/googlecode/android/wifi/tether/TetherService$LocalBinder;
.super Landroid/os/Binder;
.source "TetherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/TetherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/TetherService;


# direct methods
.method public constructor <init>(Lcom/googlecode/android/wifi/tether/TetherService;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/TetherService$LocalBinder;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lcom/googlecode/android/wifi/tether/TetherService;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/googlecode/android/wifi/tether/TetherService$LocalBinder;->this$0:Lcom/googlecode/android/wifi/tether/TetherService;

    return-object v0
.end method
