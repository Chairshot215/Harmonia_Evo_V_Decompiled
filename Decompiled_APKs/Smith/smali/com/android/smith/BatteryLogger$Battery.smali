.class public Lcom/android/smith/BatteryLogger$Battery;
.super Ljava/lang/Object;
.source "BatteryLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/BatteryLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Battery"
.end annotation


# instance fields
.field public mProg:I

.field public mRadioButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Landroid/widget/RadioGroup;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "context"
    .parameter "prog"
    .parameter "prompt"
    .parameter "parent"
    .parameter "listener"

    .prologue
    .line 97
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p2, p0, Lcom/android/smith/BatteryLogger$Battery;->mProg:I

    .line 99
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    .line 100
    iget-object v0, p0, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 101
    if-eqz p5, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p5}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/smith/BatteryLogger$Battery;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p4, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 106
    return-void
.end method
