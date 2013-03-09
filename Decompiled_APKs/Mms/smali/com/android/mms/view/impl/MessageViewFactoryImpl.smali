.class public Lcom/android/mms/view/impl/MessageViewFactoryImpl;
.super Ljava/lang/Object;
.source "MessageViewFactoryImpl.java"


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private m_ctx:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->m_ctx:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    return-void
.end method


# virtual methods
.method protected createMixedMultimediaMessageView()Lcom/android/mms/view/MessageView;
    .locals 4

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03001c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    return-object v0
.end method

.method protected createNotificationView()Lcom/android/mms/view/MessageView;
    .locals 4

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030028

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    return-object v0
.end method

.method protected createRelatedMultimediaMessageView()Lcom/android/mms/view/MessageView;
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03002f

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    return-object v0
.end method

.method protected createTextMessageView()Lcom/android/mms/view/MessageView;
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03003c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    return-object v0
.end method

.method protected createTextMessageViewWithObj()Lcom/android/mms/view/MessageView;
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030040

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/view/MessageView;

    return-object v0
.end method

.method public getFactoryContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/view/impl/MessageViewFactoryImpl;->m_ctx:Landroid/content/Context;

    return-object v0
.end method
