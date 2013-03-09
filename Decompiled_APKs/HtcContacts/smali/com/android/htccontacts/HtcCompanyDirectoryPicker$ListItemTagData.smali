.class public final Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;
.super Ljava/lang/Object;
.source "HtcCompanyDirectoryPicker.java"

# interfaces
.implements Lcom/htc/widget/HtcListItemSeparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/HtcCompanyDirectoryPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListItemTagData"
.end annotation


# instance fields
.field public primaryTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 927
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldDrawOnThis()Z
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x1

    return v0
.end method

.method public shouldSeparate(Ljava/lang/Object;)Z
    .locals 8
    .parameter "listitem"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 932
    if-nez p1, :cond_1

    .line 964
    :cond_0
    :goto_0
    return v5

    .line 937
    :cond_1
    instance-of v7, p1, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;

    if-eqz v7, :cond_0

    move-object v2, p1

    .line 941
    check-cast v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;

    .line 943
    .local v2, nextTag:Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;
    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;->primaryTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;->primaryTextView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 947
    iget-object v7, v2, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 948
    .local v1, listItemText:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/htccontacts/HtcCompanyDirectoryPicker$ListItemTagData;->primaryTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 950
    .local v4, thisText:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 951
    goto :goto_0

    .line 954
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 959
    :cond_4
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 960
    .local v0, listItemChar:C
    invoke-interface {v4, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 961
    .local v3, thisChar:C
    if-ne v0, v3, :cond_0

    move v5, v6

    .line 964
    goto :goto_0
.end method
