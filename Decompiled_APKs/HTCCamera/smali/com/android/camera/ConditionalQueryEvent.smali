.class public Lcom/android/camera/ConditionalQueryEvent;
.super Lcom/android/camera/QueryEvent;
.source "ConditionalQueryEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/QueryEvent",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_AND:I = 0x0

.field public static final TYPE_OR:I = 0x1


# instance fields
.field private final m_ConditionType:I

.field private final m_TargetResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/QueryEvent;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/camera/ConditionalQueryEvent;->m_ConditionType:I

    iput-boolean p3, p0, Lcom/android/camera/ConditionalQueryEvent;->m_TargetResult:Z

    return-void
.end method


# virtual methods
.method public final getConditionType()I
    .locals 1

    iget v0, p0, Lcom/android/camera/ConditionalQueryEvent;->m_ConditionType:I

    return v0
.end method

.method public final getTargetResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ConditionalQueryEvent;->m_TargetResult:Z

    return v0
.end method

.method public setResult(Ljava/lang/Boolean;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/camera/ConditionalQueryEvent;->hasResult()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ConditionalQueryEvent;->m_ConditionType:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ConditionalQueryEvent;->m_TargetResult:Z

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/camera/ConditionalQueryEvent;->m_ConditionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/camera/ConditionalQueryEvent;->m_TargetResult:Z

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/android/camera/QueryEvent;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/camera/ConditionalQueryEvent;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/ConditionalQueryEvent;->setResult(Ljava/lang/Boolean;)V

    return-void
.end method
