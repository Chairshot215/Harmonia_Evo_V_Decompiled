.class public Lcom/android/camera/HTCCallbackEvent;
.super Lcom/android/camera/Event;
.source "HTCCallbackEvent.java"


# instance fields
.field private final m_CallbackType:I

.field private final m_arg1:I

.field private final m_arg2:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lcom/android/camera/HTCCallbackEvent;->m_CallbackType:I

    iput p3, p0, Lcom/android/camera/HTCCallbackEvent;->m_arg1:I

    iput p4, p0, Lcom/android/camera/HTCCallbackEvent;->m_arg2:I

    return-void
.end method


# virtual methods
.method public final getArg1()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCallbackEvent;->m_arg1:I

    return v0
.end method

.method public final getArg2()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCallbackEvent;->m_arg2:I

    return v0
.end method

.method public final getCallbackType()I
    .locals 1

    iget v0, p0, Lcom/android/camera/HTCCallbackEvent;->m_CallbackType:I

    return v0
.end method
