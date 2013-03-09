.class Lcom/android/phone/nbpcd/NBPCDSetting$4;
.super Ljava/lang/Object;
.source "NBPCDSetting.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/nbpcd/NBPCDSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/nbpcd/NBPCDSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/nbpcd/NBPCDSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/phone/nbpcd/NBPCDSetting$4;->this$0:Lcom/android/phone/nbpcd/NBPCDSetting;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 3
    .parameter "view"
    .parameter "data"
    .parameter "textRepresentation"

    .prologue
    .line 600
    move-object v1, p2

    check-cast v1, Lcom/android/phone/nbpcd/IDD_ITEM;

    .line 601
    .local v1, item:Lcom/android/phone/nbpcd/IDD_ITEM;
    const v2, 0x7f0800d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 603
    .local v0, fileItem:Landroid/widget/CheckedTextView;
    invoke-virtual {v1}, Lcom/android/phone/nbpcd/IDD_ITEM;->getIDD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    invoke-virtual {v1}, Lcom/android/phone/nbpcd/IDD_ITEM;->isCurrentUsage()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 605
    const/4 v2, 0x1

    return v2
.end method
