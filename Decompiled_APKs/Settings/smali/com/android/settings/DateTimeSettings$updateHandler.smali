.class Lcom/android/settings/DateTimeSettings$updateHandler;
.super Landroid/os/Handler;
.source "DateTimeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DateTimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "updateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DateTimeSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/DateTimeSettings;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 471
    iput-object p1, p0, Lcom/android/settings/DateTimeSettings$updateHandler;->this$0:Lcom/android/settings/DateTimeSettings;

    .line 472
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 473
    return-void
.end method
