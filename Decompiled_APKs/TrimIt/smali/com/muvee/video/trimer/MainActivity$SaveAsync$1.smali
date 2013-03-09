.class Lcom/muvee/video/trimer/MainActivity$SaveAsync$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/muvee/video/trimer/MainActivity$SaveAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

.field private final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/muvee/video/trimer/MainActivity$SaveAsync;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync$1;->this$1:Lcom/muvee/video/trimer/MainActivity$SaveAsync;

    iput-object p2, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync$1;->val$name:Ljava/lang/String;

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter "dir"
    .parameter "filename"

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/muvee/video/trimer/MainActivity$SaveAsync$1;->val$name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
