.class final Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/EventDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EventClosure"
.end annotation


# instance fields
.field private final componentId:Ljava/lang/String;

.field private final eventName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/EventDispatcher$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->eventName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/EventDispatcher$EventClosure;->componentId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
