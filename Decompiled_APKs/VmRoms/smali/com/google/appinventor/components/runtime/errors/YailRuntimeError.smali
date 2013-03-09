.class public Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;
.super Lcom/google/appinventor/components/runtime/errors/RuntimeError;


# instance fields
.field private errorType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/errors/RuntimeError;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->errorType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;->errorType:Ljava/lang/String;

    return-object v0
.end method
