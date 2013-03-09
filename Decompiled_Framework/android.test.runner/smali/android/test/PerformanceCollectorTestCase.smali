.class public interface abstract Landroid/test/PerformanceCollectorTestCase;
.super Ljava/lang/Object;
.source "PerformanceCollectorTestCase.java"


# static fields
.field public static final mPerfCollector:Landroid/os/PerformanceCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    sput-object v0, Landroid/test/PerformanceCollectorTestCase;->mPerfCollector:Landroid/os/PerformanceCollector;

    return-void
.end method


# virtual methods
.method public abstract setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
.end method
