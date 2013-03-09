.class public Lcom/android/CSDFunctionG/copyright;
.super Landroid/app/Activity;
.source "copyright.java"


# static fields
.field public static tv_namemsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/android/CSDFunctionG/copyright;->tv_namemsg:Landroid/widget/TextView;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/copyright;->setContentView(I)V

    .line 17
    const v0, 0x7f08000e

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/copyright;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sput-object v0, Lcom/android/CSDFunctionG/copyright;->tv_namemsg:Landroid/widget/TextView;

    .line 18
    sget-object v0, Lcom/android/CSDFunctionG/copyright;->tv_namemsg:Landroid/widget/TextView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 21
    return-void
.end method
