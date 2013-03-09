.class public Lcom/android/camera/BooleanEvent;
.super Lcom/android/camera/Event;
.source "BooleanEvent.java"


# instance fields
.field private final m_boolean:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/camera/BooleanEvent;->m_boolean:Z

    return-void
.end method


# virtual methods
.method public final getBoolean()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/BooleanEvent;->m_boolean:Z

    return v0
.end method
