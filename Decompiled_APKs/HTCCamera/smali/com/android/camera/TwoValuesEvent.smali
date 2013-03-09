.class public Lcom/android/camera/TwoValuesEvent;
.super Lcom/android/camera/Event;
.source "TwoValuesEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TValue1:",
        "Ljava/lang/Object;",
        "TValue2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/camera/Event;"
    }
.end annotation


# instance fields
.field private final m_Value1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue1;"
        }
    .end annotation
.end field

.field private final m_Value2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTValue2;"
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
            "TTValue1;TTValue2;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/TwoValuesEvent;->m_Value1:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/camera/TwoValuesEvent;->m_Value2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getValue1()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/TwoValuesEvent;->m_Value1:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue2()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTValue2;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/TwoValuesEvent;->m_Value2:Ljava/lang/Object;

    return-object v0
.end method
