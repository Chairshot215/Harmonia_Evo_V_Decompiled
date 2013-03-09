.class Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_EditCountry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->setResult(I)V

    .line 287
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->finish()V

    .line 288
    return-void
.end method
