.class Lcom/htc/android/mail/MailProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "MailProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/MailProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/MailProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/MailProvider$DatabaseHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper$1;->this$0:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1019
    iget-object v6, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper$1;->this$0:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    iget-object v6, v6, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "mail"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 1020
    .local v1, attachDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1021
    .local v3, files:[Ljava/io/File;
    if-eqz v3, :cond_0

    .line 1022
    move-object v0, v3

    .local v0, arr$:[Ljava/io/File;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 1023
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1022
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1026
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_0
    iget-object v6, p0, Lcom/htc/android/mail/MailProvider$DatabaseHelper$1;->this$0:Lcom/htc/android/mail/MailProvider$DatabaseHelper;

    iget-object v6, v6, Lcom/htc/android/mail/MailProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const-string v7, "mail_eas"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 1027
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1028
    if-eqz v3, :cond_1

    .line 1029
    move-object v0, v3

    .restart local v0       #arr$:[Ljava/io/File;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1030
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1029
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1033
    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #file:Ljava/io/File;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    return-void
.end method
