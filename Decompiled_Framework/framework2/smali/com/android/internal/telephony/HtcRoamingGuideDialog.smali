.class public Lcom/android/internal/telephony/HtcRoamingGuideDialog;
.super Landroid/widget/LinearLayout;
.source "HtcRoamingGuideDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HtcRoamingGuideDialog"


# instance fields
.field private mListView:Landroid/widget/ListView;

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mListView:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mView:Landroid/view/ViewGroup;

    const v0, 0x10900c8

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mView:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mView:Landroid/view/ViewGroup;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mListView:Landroid/widget/ListView;

    :cond_0
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/HtcRoamingGuideDialog;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public setMsgText(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
