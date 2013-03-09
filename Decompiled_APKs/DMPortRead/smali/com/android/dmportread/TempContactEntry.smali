.class public Lcom/android/dmportread/TempContactEntry;
.super Ljava/lang/Object;
.source "TempContactEntry.java"


# static fields
.field public static final KIND_CONTACT:I = -0x1

.field private static final tag:Ljava/lang/String; = "TmpCntEntry"


# instance fields
.field public mColumn:Ljava/lang/String;

.field public mContentDir:Ljava/lang/String;

.field public mData:Ljava/lang/String;

.field public mId:J

.field public mKind:I

.field public mType:I

.field public mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;I)V
    .locals 0
    .parameter "id"
    .parameter "data"
    .parameter "type"

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-wide p1, p0, Lcom/android/dmportread/TempContactEntry;->mId:J

    .line 33
    iput p4, p0, Lcom/android/dmportread/TempContactEntry;->mType:I

    .line 34
    iput-object p3, p0, Lcom/android/dmportread/TempContactEntry;->mData:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static final newEmailEntry(JLjava/lang/String;ILandroid/net/Uri;)Lcom/android/dmportread/TempContactEntry;
    .locals 4
    .parameter "id"
    .parameter "data"
    .parameter "type"
    .parameter "parentUri"

    .prologue
    .line 72
    new-instance v0, Lcom/android/dmportread/TempContactEntry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/dmportread/TempContactEntry;-><init>(JLjava/lang/String;I)V

    .line 73
    .local v0, entry:Lcom/android/dmportread/TempContactEntry;
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "contact_methods"

    invoke-static {p4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dmportread/TempContactEntry;->mUri:Landroid/net/Uri;

    .line 77
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    const-string v2, "data"

    iput-object v2, v0, Lcom/android/dmportread/TempContactEntry;->mColumn:Ljava/lang/String;

    .line 78
    const-string v2, "contact_methods"

    iput-object v2, v0, Lcom/android/dmportread/TempContactEntry;->mContentDir:Ljava/lang/String;

    .line 79
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/dmportread/TempContactEntry;->mKind:I

    .line 80
    return-object v0
.end method

.method public static final newPhoneEntry(JLjava/lang/String;ILandroid/net/Uri;)Lcom/android/dmportread/TempContactEntry;
    .locals 4
    .parameter "id"
    .parameter "data"
    .parameter "type"
    .parameter "parentUri"

    .prologue
    .line 54
    new-instance v0, Lcom/android/dmportread/TempContactEntry;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/dmportread/TempContactEntry;-><init>(JLjava/lang/String;I)V

    .line 56
    .local v0, entry:Lcom/android/dmportread/TempContactEntry;
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p0, v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "phones"

    invoke-static {p4, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 58
    .local v1, uri:Landroid/net/Uri;
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Lcom/android/dmportread/TempContactEntry;->mUri:Landroid/net/Uri;

    .line 60
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    const-string v2, "number"

    iput-object v2, v0, Lcom/android/dmportread/TempContactEntry;->mColumn:Ljava/lang/String;

    .line 61
    const-string v2, "phones"

    iput-object v2, v0, Lcom/android/dmportread/TempContactEntry;->mContentDir:Ljava/lang/String;

    .line 62
    const/4 v2, 0x5

    iput v2, v0, Lcom/android/dmportread/TempContactEntry;->mKind:I

    .line 63
    return-object v0
.end method

.method public static final newSimpleEntry(Ljava/lang/String;Ljava/lang/String;)Lcom/android/dmportread/TempContactEntry;
    .locals 2
    .parameter "data"
    .parameter "column"

    .prologue
    .line 42
    new-instance v0, Lcom/android/dmportread/TempContactEntry;

    invoke-direct {v0}, Lcom/android/dmportread/TempContactEntry;-><init>()V

    .line 43
    .local v0, entry:Lcom/android/dmportread/TempContactEntry;
    iput-object p0, v0, Lcom/android/dmportread/TempContactEntry;->mData:Ljava/lang/String;

    .line 44
    iput-object p1, v0, Lcom/android/dmportread/TempContactEntry;->mColumn:Ljava/lang/String;

    .line 45
    const/4 v1, -0x1

    iput v1, v0, Lcom/android/dmportread/TempContactEntry;->mKind:I

    .line 46
    return-object v0
.end method


# virtual methods
.method public toValues(Landroid/content/ContentValues;)Z
    .locals 4
    .parameter "values"

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 95
    .local v0, success:Z
    iget v1, p0, Lcom/android/dmportread/TempContactEntry;->mKind:I

    sparse-switch v1, :sswitch_data_0

    .line 106
    const-string v1, "TmpCntEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown kind "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/dmportread/TempContactEntry;->mKind:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v1, "kind"

    iget v2, p0, Lcom/android/dmportread/TempContactEntry;->mKind:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "type"

    iget v2, p0, Lcom/android/dmportread/TempContactEntry;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const/4 v0, 0x0

    .line 113
    :goto_0
    const-string v1, "isprimary"

    const-string v2, "0"

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/android/dmportread/TempContactEntry;->mColumn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/dmportread/TempContactEntry;->mData:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return v0

    .line 97
    :sswitch_0
    const-string v1, "type"

    iget v2, p0, Lcom/android/dmportread/TempContactEntry;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 101
    :sswitch_1
    const-string v1, "kind"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string v1, "type"

    iget v2, p0, Lcom/android/dmportread/TempContactEntry;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 95
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
