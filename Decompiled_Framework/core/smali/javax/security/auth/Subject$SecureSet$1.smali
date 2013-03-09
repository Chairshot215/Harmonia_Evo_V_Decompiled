.class Ljavax/security/auth/Subject$SecureSet$1;
.super Ljavax/security/auth/Subject$SecureSet$SecureIterator;
.source "Subject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/security/auth/Subject$SecureSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljavax/security/auth/Subject$SecureSet;


# direct methods
.method constructor <init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V
    .locals 0

    iput-object p1, p0, Ljavax/security/auth/Subject$SecureSet$1;->this$1:Ljavax/security/auth/Subject$SecureSet;

    invoke-direct {p0, p1, p2}, Ljavax/security/auth/Subject$SecureSet$SecureIterator;-><init>(Ljavax/security/auth/Subject$SecureSet;Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSST;"
        }
    .end annotation

    iget-object v1, p0, Ljavax/security/auth/Subject$SecureSet$SecureIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
