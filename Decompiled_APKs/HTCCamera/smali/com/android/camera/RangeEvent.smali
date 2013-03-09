.class public Lcom/android/camera/RangeEvent;
.super Lcom/android/camera/Event;
.source "RangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/Event;"
    }
.end annotation


# instance fields
.field private final m_Maximum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final m_Minimum:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/RangeEvent;->m_Minimum:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/camera/RangeEvent;->m_Maximum:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getMaximum()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/RangeEvent;->m_Maximum:Ljava/lang/Object;

    return-object v0
.end method

.method public final getMinimum()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/RangeEvent;->m_Minimum:Ljava/lang/Object;

    return-object v0
.end method
