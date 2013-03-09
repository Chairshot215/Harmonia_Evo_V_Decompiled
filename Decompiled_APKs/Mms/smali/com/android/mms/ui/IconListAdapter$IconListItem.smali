.class public Lcom/android/mms/ui/IconListAdapter$IconListItem;
.super Ljava/lang/Object;
.source "IconListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/IconListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconListItem"
.end annotation


# instance fields
.field private final mTextResource:I

.field private final m_nResourceID:I

.field private final m_strTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "strTitle"

    .prologue
    .line 129
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_nResourceID:I

    .line 131
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_strTitle:Ljava/lang/String;

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTextResource:I

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter "strTitle"
    .parameter "nResourceID"

    .prologue
    .line 135
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput p2, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_nResourceID:I

    .line 137
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_strTitle:Ljava/lang/String;

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTextResource:I

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter "strTitle"
    .parameter "nResourceID"
    .parameter "textResource"

    .prologue
    .line 141
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p2, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_nResourceID:I

    .line 143
    iput-object p1, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_strTitle:Ljava/lang/String;

    .line 144
    iput p3, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTextResource:I

    .line 145
    return-void
.end method


# virtual methods
.method public getResource()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_nResourceID:I

    return v0
.end method

.method public getTextResource()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTextResource:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->m_strTitle:Ljava/lang/String;

    return-object v0
.end method

.method public hasTextResource()Z
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/mms/ui/IconListAdapter$IconListItem;->mTextResource:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
