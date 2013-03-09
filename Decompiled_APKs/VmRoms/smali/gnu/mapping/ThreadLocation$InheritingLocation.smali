.class public Lgnu/mapping/ThreadLocation$InheritingLocation;
.super Ljava/lang/InheritableThreadLocal;
.source "ThreadLocation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgnu/mapping/ThreadLocation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InheritingLocation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/InheritableThreadLocal",
        "<",
        "Lgnu/mapping/NamedLocation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lgnu/mapping/ThreadLocation;


# direct methods
.method public constructor <init>(Lgnu/mapping/ThreadLocation;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    invoke-direct {p0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected childValue(Lgnu/mapping/NamedLocation;)Lgnu/mapping/SharedLocation;
    .locals 6
    .parameter "parentValue"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 160
    iget-object v2, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    sget-object v3, Lgnu/mapping/ThreadLocation;->ANONYMOUS:Ljava/lang/String;

    if-eq v2, v3, :cond_0

    .line 161
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2}, Ljava/lang/Error;-><init>()V

    throw v2

    .line 162
    :cond_0
    if-nez p1, :cond_1

    .line 163
    iget-object v2, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    invoke-virtual {v2}, Lgnu/mapping/ThreadLocation;->getLocation()Lgnu/mapping/NamedLocation;

    move-result-object p1

    .end local p1
    check-cast p1, Lgnu/mapping/SharedLocation;

    .line 164
    .restart local p1
    :cond_1
    move-object v0, p1

    .line 165
    .local v0, nloc:Lgnu/mapping/NamedLocation;
    iget-object v2, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    if-nez v2, :cond_2

    .line 167
    new-instance v1, Lgnu/mapping/SharedLocation;

    iget-object v2, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v3, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v3, v3, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 168
    .local v1, sloc:Lgnu/mapping/SharedLocation;
    iget-object v2, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    iput-object v2, v1, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 169
    iput-object v1, v0, Lgnu/mapping/NamedLocation;->base:Lgnu/mapping/Location;

    .line 170
    iput-object v5, v0, Lgnu/mapping/NamedLocation;->value:Ljava/lang/Object;

    .line 171
    move-object v0, v1

    .line 173
    .end local v1           #sloc:Lgnu/mapping/SharedLocation;
    :cond_2
    new-instance v1, Lgnu/mapping/SharedLocation;

    iget-object v2, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v2, v2, Lgnu/mapping/ThreadLocation;->name:Lgnu/mapping/Symbol;

    iget-object v3, p0, Lgnu/mapping/ThreadLocation$InheritingLocation;->this$0:Lgnu/mapping/ThreadLocation;

    iget-object v3, v3, Lgnu/mapping/ThreadLocation;->property:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, v4}, Lgnu/mapping/SharedLocation;-><init>(Lgnu/mapping/Symbol;Ljava/lang/Object;I)V

    .line 174
    .restart local v1       #sloc:Lgnu/mapping/SharedLocation;
    iput-object v5, v1, Lgnu/mapping/SharedLocation;->value:Ljava/lang/Object;

    .line 175
    iput-object v0, v1, Lgnu/mapping/SharedLocation;->base:Lgnu/mapping/Location;

    .line 176
    return-object v1
.end method

.method protected bridge synthetic childValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 155
    check-cast p1, Lgnu/mapping/NamedLocation;

    .end local p1
    invoke-virtual {p0, p1}, Lgnu/mapping/ThreadLocation$InheritingLocation;->childValue(Lgnu/mapping/NamedLocation;)Lgnu/mapping/SharedLocation;

    move-result-object v0

    return-object v0
.end method
