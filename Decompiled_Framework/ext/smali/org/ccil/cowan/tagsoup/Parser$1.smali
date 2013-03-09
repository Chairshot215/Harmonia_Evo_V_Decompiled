.class Lorg/ccil/cowan/tagsoup/Parser$1;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lorg/ccil/cowan/tagsoup/AutoDetector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ccil/cowan/tagsoup/Parser;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/ccil/cowan/tagsoup/Parser;


# direct methods
.method constructor <init>(Lorg/ccil/cowan/tagsoup/Parser;)V
    .locals 0

    iput-object p1, p0, Lorg/ccil/cowan/tagsoup/Parser$1;->this$0:Lorg/ccil/cowan/tagsoup/Parser;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autoDetectingReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 1

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method
