.class public Lcom/android/camera/QueryEvent;
.super Lcom/android/camera/Event;
.source "QueryEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/Event;"
    }
.end annotation


# instance fields
.field private m_HasResult:Z

.field private m_Result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private m_Throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final clearResult()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/QueryEvent;->m_Result:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/QueryEvent;->m_HasResult:Z

    return-void
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/QueryEvent;->m_Result:Ljava/lang/Object;

    return-object v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/QueryEvent;->m_Throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final hasResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/QueryEvent;->m_HasResult:Z

    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/QueryEvent;->m_Result:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/QueryEvent;->m_HasResult:Z

    return-void
.end method

.method public final setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/QueryEvent;->m_Throwable:Ljava/lang/Throwable;

    return-void
.end method
