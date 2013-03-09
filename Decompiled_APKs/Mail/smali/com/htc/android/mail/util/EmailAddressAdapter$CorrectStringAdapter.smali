.class public Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;
.super Landroid/widget/IMECursorAdapter;
.source "EmailAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/util/EmailAddressAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CorrectStringAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 885
    iput-object p1, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;->this$0:Lcom/htc/android/mail/util/EmailAddressAdapter;

    .line 886
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Landroid/widget/IMECursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 887
    const-string v0, "EmailAddressAdapter"

    const-string v1, "searchGAL create>"

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iput-object p2, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;->mContext:Landroid/content/Context;

    .line 889
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    #setter for: Lcom/htc/android/mail/util/EmailAddressAdapter;->mRes:Landroid/content/res/Resources;
    invoke-static {p1, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$202(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 891
    iget-object v0, p0, Lcom/htc/android/mail/util/EmailAddressAdapter$CorrectStringAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    #setter for: Lcom/htc/android/mail/util/EmailAddressAdapter;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {p1, v0}, Lcom/htc/android/mail/util/EmailAddressAdapter;->access$302(Lcom/htc/android/mail/util/EmailAddressAdapter;Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    .line 895
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 900
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 904
    const/4 v0, 0x0

    return-object v0
.end method
