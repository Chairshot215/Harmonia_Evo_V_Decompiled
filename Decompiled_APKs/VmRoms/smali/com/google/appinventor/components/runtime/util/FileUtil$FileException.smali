.class public Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/util/FileUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileException"
.end annotation


# instance fields
.field private final msgNumber:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>()V

    iput p1, p0, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->msgNumber:I

    return-void
.end method


# virtual methods
.method public getErrorMessageNumber()I
    .locals 1

    iget v0, p0, Lcom/google/appinventor/components/runtime/util/FileUtil$FileException;->msgNumber:I

    return v0
.end method
