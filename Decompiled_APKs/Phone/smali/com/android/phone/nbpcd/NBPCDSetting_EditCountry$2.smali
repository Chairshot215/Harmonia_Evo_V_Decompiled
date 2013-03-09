.class Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$2;
.super Ljava/lang/Object;
.source "NBPCDSetting_EditCountry.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->showWarningDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$2;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$2;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->setResult(I)V

    .line 227
    iget-object v0, p0, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry$2;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;

    invoke-virtual {v0}, Lcom/android/phone/nbpcd/NBPCDSetting_EditCountry;->finish()V

    .line 228
    return-void
.end method
