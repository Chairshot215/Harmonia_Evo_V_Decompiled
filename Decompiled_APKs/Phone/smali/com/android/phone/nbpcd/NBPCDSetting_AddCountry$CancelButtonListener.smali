.class Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$CancelButtonListener;
.super Ljava/lang/Object;
.source "NBPCDSetting_AddCountry.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;


# direct methods
.method private constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$CancelButtonListener;-><init>(Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->setResult(I)V

    .line 241
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry$CancelButtonListener;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_AddCountry;->finish()V

    .line 242
    return-void
.end method
