.class Lcom/android/phone/HtcCdmaPrlUpdateSetting$2;
.super Ljava/lang/Object;
.source "HtcCdmaPrlUpdateSetting.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HtcCdmaPrlUpdateSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaPrlUpdateSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$2;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$2;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const/4 v1, 0x0

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->setNeedTurnOnRadio(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$200(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V

    .line 106
    iget-object v0, p0, Lcom/android/phone/HtcCdmaPrlUpdateSetting$2;->this$0:Lcom/android/phone/HtcCdmaPrlUpdateSetting;

    const/4 v1, 0x1

    #calls: Lcom/android/phone/HtcCdmaPrlUpdateSetting;->startCheckin(Z)V
    invoke-static {v0, v1}, Lcom/android/phone/HtcCdmaPrlUpdateSetting;->access$300(Lcom/android/phone/HtcCdmaPrlUpdateSetting;Z)V

    .line 107
    return-void
.end method
