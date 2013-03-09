.class public Lcom/android/providers/contacts/PhotoStore$Entry;
.super Ljava/lang/Object;
.source "PhotoStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/PhotoStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field public final id:J

.field public final path:Ljava/lang/String;

.field public final size:J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .parameter "file"

    .prologue
    .line 357
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 358
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore$Entry;->id:J

    .line 359
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/PhotoStore$Entry;->size:J

    .line 360
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/contacts/PhotoStore$Entry;->path:Ljava/lang/String;

    .line 361
    return-void
.end method
