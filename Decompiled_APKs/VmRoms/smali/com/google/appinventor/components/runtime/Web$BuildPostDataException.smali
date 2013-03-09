.class Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Web;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuildPostDataException"
.end annotation


# instance fields
.field final errorNumber:I

.field final index:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->errorNumber:I

    iput p2, p0, Lcom/google/appinventor/components/runtime/Web$BuildPostDataException;->index:I

    return-void
.end method
