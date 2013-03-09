.class public Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;
.super Ljava/lang/Object;
.source "Flashlight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Flashlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "flashTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Flashlight;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #getter for: Lcom/android/systemui/statusbar/preference/Flashlight;->runTimer:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$000(Lcom/android/systemui/statusbar/preference/Flashlight;)Z

    move-result v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$flashTimer;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #calls: Lcom/android/systemui/statusbar/preference/Flashlight;->setFlashlightEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$300(Lcom/android/systemui/statusbar/preference/Flashlight;Z)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
