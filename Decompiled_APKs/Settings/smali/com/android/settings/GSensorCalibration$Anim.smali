.class Lcom/android/settings/GSensorCalibration$Anim;
.super Ljava/lang/Object;
.source "GSensorCalibration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorCalibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Anim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GSensorCalibration;


# direct methods
.method private constructor <init>(Lcom/android/settings/GSensorCalibration;)V
    .locals 0
    .parameter

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/GSensorCalibration$Anim;->this$0:Lcom/android/settings/GSensorCalibration;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/GSensorCalibration;Lcom/android/settings/GSensorCalibration$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorCalibration$Anim;-><init>(Lcom/android/settings/GSensorCalibration;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/settings/GSensorCalibration$Anim;->this$0:Lcom/android/settings/GSensorCalibration;

    #calls: Lcom/android/settings/GSensorCalibration;->startAnim()V
    invoke-static {v0}, Lcom/android/settings/GSensorCalibration;->access$500(Lcom/android/settings/GSensorCalibration;)V

    .line 376
    return-void
.end method
