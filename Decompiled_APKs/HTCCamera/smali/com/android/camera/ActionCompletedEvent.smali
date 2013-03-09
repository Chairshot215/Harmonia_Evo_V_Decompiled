.class public Lcom/android/camera/ActionCompletedEvent;
.super Lcom/android/camera/Event;
.source "ActionCompletedEvent.java"


# instance fields
.field private final m_IsSucceeded:Z

.field private final m_Throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ActionCompletedEvent;-><init>(Ljava/lang/String;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/camera/ActionCompletedEvent;->m_IsSucceeded:Z

    iput-object p3, p0, Lcom/android/camera/ActionCompletedEvent;->m_Throwable:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ActionCompletedEvent;->m_Throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final isSucceeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/ActionCompletedEvent;->m_IsSucceeded:Z

    return v0
.end method
