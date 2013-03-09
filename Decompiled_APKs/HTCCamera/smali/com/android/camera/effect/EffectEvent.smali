.class public Lcom/android/camera/effect/EffectEvent;
.super Lcom/android/camera/Event;
.source "EffectEvent.java"


# instance fields
.field private final m_Effect:Lcom/android/camera/effect/EffectBase;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/camera/effect/EffectBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/Event;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/effect/EffectEvent;->m_Effect:Lcom/android/camera/effect/EffectBase;

    return-void
.end method


# virtual methods
.method public final getEffect()Lcom/android/camera/effect/EffectBase;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectEvent;->m_Effect:Lcom/android/camera/effect/EffectBase;

    return-object v0
.end method
