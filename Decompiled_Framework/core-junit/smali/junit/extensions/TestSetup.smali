.class public Ljunit/extensions/TestSetup;
.super Ljunit/extensions/TestDecorator;
.source "TestSetup.java"


# direct methods
.method public constructor <init>(Ljunit/framework/Test;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/extensions/TestDecorator;-><init>(Ljunit/framework/Test;)V

    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .locals 1

    new-instance v0, Ljunit/extensions/TestSetup$1;

    invoke-direct {v0, p0, p1}, Ljunit/extensions/TestSetup$1;-><init>(Ljunit/extensions/TestSetup;Ljunit/framework/TestResult;)V

    invoke-virtual {p1, p0, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    return-void
.end method

.method protected setUp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected tearDown()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method
