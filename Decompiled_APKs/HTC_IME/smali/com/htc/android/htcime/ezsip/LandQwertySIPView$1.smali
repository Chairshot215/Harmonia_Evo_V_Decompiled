.class Lcom/htc/android/htcime/ezsip/LandQwertySIPView$1;
.super Ljava/lang/Object;
.source "LandQwertySIPView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->startInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcime/ezsip/LandQwertySIPView;


# direct methods
.method constructor <init>(Lcom/htc/android/htcime/ezsip/LandQwertySIPView;)V
    .locals 0
    .parameter

    .prologue
    .line 341
    iput-object p1, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView$1;->this$0:Lcom/htc/android/htcime/ezsip/LandQwertySIPView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/android/htcime/ezsip/LandQwertySIPView$1;->this$0:Lcom/htc/android/htcime/ezsip/LandQwertySIPView;

    invoke-virtual {v0}, Lcom/htc/android/htcime/ezsip/LandQwertySIPView;->updateFullscreenMode()V

    return-void
.end method
