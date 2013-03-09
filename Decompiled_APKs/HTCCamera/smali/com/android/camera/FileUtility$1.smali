.class final Lcom/android/camera/FileUtility$1;
.super Ljava/lang/Object;
.source "FileUtility.java"

# interfaces
.implements Lcom/android/camera/FileUtility$FileEnumerationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/FileUtility;->backupDirectory(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$backupDirPrefix:Ljava/lang/String;

.field final synthetic val$backupDirPrefixLength:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    iput p1, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    iput-object p2, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefix:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    if-gt v3, v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v3, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget v3, p0, Lcom/android/camera/FileUtility$1;->val$backupDirPrefixLength:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    check-cast p2, [Ljava/lang/Object;

    move-object v2, p2

    check-cast v2, [Ljava/lang/Object;

    aget-object v3, v2, v6

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v1, v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
