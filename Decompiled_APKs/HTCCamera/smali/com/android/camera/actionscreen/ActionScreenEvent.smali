.class public Lcom/android/camera/actionscreen/ActionScreenEvent;
.super Lcom/android/camera/Event;
.source "ActionScreenEvent.java"


# instance fields
.field private m_ActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

.field private m_CloseReason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/actionscreen/ActionScreen;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/actionscreen/ActionScreenEvent;-><init>(Ljava/lang/String;Lcom/android/camera/actionscreen/ActionScreen;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/actionscreen/ActionScreen;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/actionscreen/ActionScreenEvent;->m_ActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    iput p3, p0, Lcom/android/camera/actionscreen/ActionScreenEvent;->m_CloseReason:I

    return-void
.end method


# virtual methods
.method public final getActionScreen()Lcom/android/camera/actionscreen/ActionScreen;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/actionscreen/ActionScreenEvent;->m_ActionScreen:Lcom/android/camera/actionscreen/ActionScreen;

    return-object v0
.end method

.method public final getCloseReason()I
    .locals 1

    iget v0, p0, Lcom/android/camera/actionscreen/ActionScreenEvent;->m_CloseReason:I

    return v0
.end method
