.class Lgnu/kawa/xml/Document$DocReference;
.super Ljava/lang/ref/SoftReference;
.source "Document.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/kawa/xml/Document;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocReference"
.end annotation


# static fields
.field static queue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field key:Lgnu/text/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>(Lgnu/text/Path;Lgnu/kawa/xml/KDocument;)V
    .locals 1
    .parameter "key"
    .parameter "doc"

    .prologue
    .line 52
    sget-object v0, Lgnu/kawa/xml/Document$DocReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p0, p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 53
    iput-object p1, p0, Lgnu/kawa/xml/Document$DocReference;->key:Lgnu/text/Path;

    .line 54
    return-void
.end method
