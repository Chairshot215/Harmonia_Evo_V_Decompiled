.class Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$CancelButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_EditIDD.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$CancelButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->setResult(I)V

    .line 225
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditIDD;->finish()V

    .line 226
    return-void
.end method
