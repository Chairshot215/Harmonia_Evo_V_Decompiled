.class public Lcom/android/camera/DeletionRequestEvent;
.super Lcom/android/camera/RequestEvent;
.source "DeletionRequestEvent.java"


# instance fields
.field private m_IsDeleted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/RequestEvent;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final isDeleted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/DeletionRequestEvent;->m_IsDeleted:Z

    return v0
.end method

.method public final setDeleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/DeletionRequestEvent;->m_IsDeleted:Z

    return-void
.end method
