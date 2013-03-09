.class Ljava/util/zip/ZipFile$1;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<",
        "Ljava/util/zip/ZipEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/zip/ZipFile;

.field final synthetic val$iterator:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    iput-object p2, p0, Ljava/util/zip/ZipFile$1;->val$iterator:Ljava/util/Iterator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #calls: Ljava/util/zip/ZipFile;->checkNotClosed()V
    invoke-static {v0}, Ljava/util/zip/ZipFile;->access$000(Ljava/util/zip/ZipFile;)V

    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/zip/ZipFile$1;->nextElement()Ljava/util/zip/ZipEntry;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/util/zip/ZipEntry;
    .locals 1

    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->this$0:Ljava/util/zip/ZipFile;

    #calls: Ljava/util/zip/ZipFile;->checkNotClosed()V
    invoke-static {v0}, Ljava/util/zip/ZipFile;->access$000(Ljava/util/zip/ZipFile;)V

    iget-object v0, p0, Ljava/util/zip/ZipFile$1;->val$iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    return-object v0
.end method
