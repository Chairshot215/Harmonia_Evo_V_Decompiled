.class Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_AddIDD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->setResult(I)V

    .line 218
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddIDD;->finish()V

    .line 219
    return-void
.end method
