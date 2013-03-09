.class final Ljava/util/LinkedList$Link;
.super Ljava/lang/Object;
.source "LinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Link"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TET;"
        }
    .end annotation
.end field

.field next:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field previous:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;",
            "Ljava/util/LinkedList$Link",
            "<TET;>;",
            "Ljava/util/LinkedList$Link",
            "<TET;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    iput-object p2, p0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object p3, p0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    return-void
.end method
