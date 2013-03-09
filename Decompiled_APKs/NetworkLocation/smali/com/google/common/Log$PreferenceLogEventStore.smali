.class Lcom/google/common/Log$PreferenceLogEventStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/common/Log$LogEventStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLogEventStore"
.end annotation


# instance fields
.field private final preference:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/common/Log$PreferenceLogEventStore;->preference:Ljava/lang/String;

    return-void
.end method
