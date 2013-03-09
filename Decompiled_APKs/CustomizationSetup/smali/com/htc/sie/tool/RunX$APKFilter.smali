.class Lcom/htc/sie/tool/RunX$APKFilter;
.super Ljava/lang/Object;
.source "RunX.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sie/tool/RunX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "APKFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sie/tool/RunX;


# direct methods
.method constructor <init>(Lcom/htc/sie/tool/RunX;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-object p1, p0, Lcom/htc/sie/tool/RunX$APKFilter;->this$0:Lcom/htc/sie/tool/RunX;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 29
    const-string v0, ".apk"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
