.class public Lcom/android/CSDFunctionG/log;
.super Landroid/app/Activity;
.source "log.java"


# static fields
.field static final TAG:Ljava/lang/String; = "GSD_sdtest"


# instance fields
.field data:[C

.field private itemlog:Landroid/widget/TextView;

.field private logstr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/CSDFunctionG/log;->itemlog:Landroid/widget/TextView;

    .line 14
    iput-object v0, p0, Lcom/android/CSDFunctionG/log;->logstr:Ljava/lang/String;

    .line 17
    const/16 v0, 0x1000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/CSDFunctionG/log;->data:[C

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/log;->setContentView(I)V

    .line 24
    const v0, 0x7f080022

    invoke-virtual {p0, v0}, Lcom/android/CSDFunctionG/log;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/CSDFunctionG/log;->itemlog:Landroid/widget/TextView;

    .line 26
    invoke-virtual {p0}, Lcom/android/CSDFunctionG/log;->readfile()V

    .line 27
    return-void
.end method

.method public readfile()V
    .locals 5

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v3, "/data/functiontestlog.txt"

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, fr:Ljava/io/FileReader;
    iget-object v3, p0, Lcom/android/CSDFunctionG/log;->data:[C

    invoke-virtual {v1, v3}, Ljava/io/FileReader;->read([C)I

    move-result v2

    .line 39
    .local v2, num:I
    iget-object v3, p0, Lcom/android/CSDFunctionG/log;->data:[C

    if-nez v3, :cond_0

    .line 41
    iget-object v3, p0, Lcom/android/CSDFunctionG/log;->itemlog:Landroid/widget/TextView;

    const-string v4, "Read fail"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 56
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v2           #num:I
    :goto_0
    return-void

    .line 45
    .restart local v1       #fr:Ljava/io/FileReader;
    .restart local v2       #num:I
    :cond_0
    iget-object v3, p0, Lcom/android/CSDFunctionG/log;->logstr:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/CSDFunctionG/log;->data:[C

    invoke-static {v3}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/CSDFunctionG/log;->logstr:Ljava/lang/String;

    .line 46
    iget-object v3, p0, Lcom/android/CSDFunctionG/log;->itemlog:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/CSDFunctionG/log;->logstr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v2           #num:I
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/io/IOException;
    const-string v3, "GSD_sdtest"

    const-string v4, "read fail"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
